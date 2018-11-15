package de.codeschluss.portal.common.base;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.hateoas.PagedResources;
import org.springframework.hateoas.Resource;
import org.springframework.hateoas.Resources;

import de.codeschluss.portal.common.exception.NotFoundException;
import de.codeschluss.portal.common.utils.FilterSortPaginate;

public abstract class DataService<E extends BaseEntity, R extends FilteredJpaRepository<E, String>> {
	
	protected final R repo;
	protected final PagingAndSortingAssembler<E> assembler;
	
	protected final String DEFAULT_SORT_PROP = "id";
	
	public DataService(
			R repo,
			PagingAndSortingAssembler<E> assembler) {
		this.repo = repo;
		this.assembler = assembler;
	}
	
	public boolean exists(Example<E> example) {
		return repo.exists(example);
	}
	
	public boolean existsById(String addressId) {
		return repo.existsById(addressId);
	}
	
	public Resource<E> getResourceById(String id) {
		return assembler.toResource(getById(id));
	}
	
	public E getById(String id) {
		return repo.findById(id).orElseThrow(() -> new NotFoundException(id));
	}
	
	public List<E> getByIds(List<String> entityIds) {
		return repo.findByIdIn(entityIds).orElseThrow(() -> new NotFoundException(entityIds.toString()));
	}
	
	public Resource<E> addResource(E newEntity) {
		return assembler.toResource(add(newEntity));
	}
	
	public E add(E newEntity) {
		E duplicate = getExisting(newEntity);
		return duplicate != null
				? duplicate 
				: repo.save(newEntity);
	}
	
	public List<E> addAll(List<E> newEntities) {
		return newEntities.stream().map(entity -> {
			E duplicate = getExisting(entity);
			return duplicate != null
					? duplicate 
					: repo.save(entity);
		}).collect(Collectors.toList());
	}
	
	public abstract E getExisting(E newEntity);
	
	public Resource<E> updateResource(String id, E updatedEntity) {
		return assembler.toResource(update(id, updatedEntity));
	}
	
	public abstract E update(String id, E updatedEntity);
	
	public void delete(String id) {
		repo.deleteById(id);
	}
	
	public Resources<?> getSortedListResources(FilterSortPaginate params) {
		String filter = params.getFilter();
		List<E> result =  filter == null
				? repo.findAll(getSort(params))
				: repo.findFiltered(filter, getSort(params)).orElseThrow(() -> new NotFoundException(filter));
				
		return assembler.entitiesToResources(result, params);
	}

	public PagedResources<Resource<E>> getPagedResources(FilterSortPaginate params) {
		String filter = params.getFilter();
		PageRequest page = PageRequest.of(params.getPage(), params.getSize(), getSort(params));
		
		Page<E> result = filter == null 
				? repo.findAll(page)
				: repo.findFiltered(filter, page).orElseThrow(() -> new NotFoundException(filter));
		
		return assembler.entitiesToPagedResources(result, params);
	}
	
	protected Sort getSort(FilterSortPaginate params) {
		return params.createSort(DEFAULT_SORT_PROP);
	}

}
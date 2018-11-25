package de.codeschluss.portal.components.user;

import com.querydsl.core.types.dsl.BooleanExpression;

import de.codeschluss.portal.core.common.QueryBuilder;
import de.codeschluss.portal.core.utils.FilterSortPaginate;

import org.springframework.stereotype.Service;

// TODO: Auto-generated Javadoc
/**
 * The Class UserQueryBuilder.
 */
@Service
public class UserQueryBuilder extends QueryBuilder {
  
  /** The query. */
  private final QUserEntity query;
  
  /**
   * Instantiates a new user query builder.
   */
  public UserQueryBuilder() {
    query = QUserEntity.userEntity;
  }

  /**
   * With username.
   *
   * @param username the username
   * @return the boolean expression
   */
  public BooleanExpression withUsername(String username) {
    return query.username.eq(username);
  }

  /**
   * As superuser.
   *
   * @return the boolean expression
   */
  public BooleanExpression asSuperuser() {
    return query.superuser.eq(true);
  }

  /**
   * Fuzzy search.
   *
   * @param params the params
   * @return the boolean expression
   */
  public BooleanExpression search(FilterSortPaginate params) {
    String filter = prepareFilter(params.getFilter());
    return query.fullname.likeIgnoreCase(filter)
        .or(query.username.likeIgnoreCase(filter))
        .or(query.phone.likeIgnoreCase(filter));
  }
  
  

}
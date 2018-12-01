package de.codeschluss.portal.components.organisation;

import com.fasterxml.jackson.annotation.JsonIgnore;

import de.codeschluss.portal.components.address.AddressEntity;
import de.codeschluss.portal.components.provider.ProviderEntity;
import de.codeschluss.portal.core.common.BaseEntity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.ToString;

import org.springframework.hateoas.core.Relation;

/**
 * The persistent class for the organisations database table.
 * 
 * @author Valmir Etemi
 *
 */
@Data
@EqualsAndHashCode(callSuper = true)
@NoArgsConstructor(access = AccessLevel.PUBLIC)
@AllArgsConstructor
@Entity
@Table(name = "organisations")
@Relation(collectionRelation = "data")
public class OrganisationEntity extends BaseEntity {
  
  private static final long serialVersionUID = 1L;

  @Lob
  @Column(columnDefinition = "TEXT")
  private String description;
  
  @Lob
  @Column(columnDefinition = "MEDIUMBLOB")
  private byte[] image;

  private String mail;

  @Column(unique = true, nullable = false)
  private String name;

  private String phone;

  private String website;

  @ManyToOne
  @JsonIgnore
  @ToString.Exclude
  private AddressEntity address;

  @OneToMany(mappedBy = "organisation")
  @JsonIgnore
  @ToString.Exclude
  private List<ProviderEntity> providers;
}

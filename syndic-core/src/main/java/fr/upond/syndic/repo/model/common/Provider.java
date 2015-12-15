package fr.upond.syndic.repo.model.common;

import fr.upond.syndic.repo.model.BaseObject;

/**
 * Created by leite_2 on 12/12/2015.
 */
public class Provider extends BaseObject {

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    private int id;
    private String nameProvider;
    private String description;
    private String dateCreation;

    public Provider(String name, String description, String dateCreation) {
        super();
        this.nameProvider = name;
        this.description = description;
        this.dateCreation = dateCreation;
    }

    public Provider() {
        super();
    }

    @Override
    public String toString() {
        return "Provider{" +
                "id=" + id +
                ", name='" + nameProvider + '\'' +
                ", description='" + description + '\'' +
                ", dateCreation='" + dateCreation + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Provider provider = (Provider) o;

        if (id != provider.id) return false;
        if (nameProvider != null ? !nameProvider.equals(provider.nameProvider) : provider.nameProvider != null) return false;
        if (description != null ? !description.equals(provider.description) : provider.description != null)
            return false;
        return !(dateCreation != null ? !dateCreation.equals(provider.dateCreation) : provider.dateCreation != null);

    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (nameProvider != null ? nameProvider.hashCode() : 0);
        result = 31 * result + (description != null ? description.hashCode() : 0);
        result = 31 * result + (dateCreation != null ? dateCreation.hashCode() : 0);
        return result;
    }

    public String getNameProvider() {
        return nameProvider;
    }

    public void setNameProvider(String name) {
        this.nameProvider = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDateCreation() {
        return dateCreation;
    }

    public void setDateCreation(String dateCreation) {
        this.dateCreation = dateCreation;
    }
}

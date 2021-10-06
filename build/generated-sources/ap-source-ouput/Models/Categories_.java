package Models;

import Models.Items;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2021-08-02T13:17:19")
@StaticMetamodel(Categories.class)
public class Categories_ { 

    public static volatile ListAttribute<Categories, Items> itemsList;
    public static volatile SingularAttribute<Categories, String> categoryName;
    public static volatile SingularAttribute<Categories, Integer> categoryID;

}
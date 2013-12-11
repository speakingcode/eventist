class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string  :name
      t.integer :state_id

      t.timestamps
    end
  end
end


With Rails' ActiveRecord ORM, we can create tables in the database with a primary key other than the default 'id'...

...and then set the primary key in our model classes to use the primary key...

While this is technically fine, it is generally discouraged because it usually requires additional explicit configuration in the models and elsewhere, where Rails expects primary keys to be named 'id' by default. For instance, associations in models expect the foreign key field referencing a table 't' to be named 't_id', but that name is not very practical if t's primary key is something other than 'id'. We can name the foreign key field something that matches the related model's primary key, however, and then explicitly state the name of the foreign key field to use for the association...

Some components of Rails do not provide the same level of configuration, and so dealing with custom names for primary keys becomes a bit more tedious. One example is the resources method which generates routes corresponding to CRUD operations for a particular model and controller, mapping end-point URLs to actions in the controller. Expecting the primary key of models to be 'id', resources will name the identifying parameter of a resource as :id, except in the case of nested resources where each parent resource in the hierarchy is identified by '_id' appended to the name of the resource, such as :parent_id and the bottom-level resources are still identified by the :id parameter...



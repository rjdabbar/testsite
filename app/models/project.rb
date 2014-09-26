class Project < ActiveRecord::Base

 attr_accessible :thumbnail_lrg, :thumbnail_smcategory, :main_image

  has_attached_file :thumbnail_lrg,  :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  has_attached_file :thumbnail_smcategory,  :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  has_attached_file :main_image,  :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"


  validates_attachment :thumbnail_lrg, presence: true, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"]}
  validates_attachment :thumbnail_smcategory, presence: true, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }
  validates_attachment :main_image, presence: true, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"]  }
 

  def self.populate_project_information_from(hash)

    Project.create! do |p|
      p.title = hash[:title]
      p.headline = hash[:headline]
      p.body = hash[:body]
      p.partner = hash[:partner]
      p.excerpt = hash[:excerpt]
      p.client = hash[:client]
      p.agency = hash[:agency]
      p.main_image = hash[:main_image]
      p.thumbnail_smcategory = hash[:thumbnail_smcategory]
      p.thumbnail_lrg = hash[:thumbnail_lrg]
      p.url = hash[:title].parameterize

    end

  end

  def self.edit_vars(id, hash)
    project = Project.find(id)

    project.title = hash[:title]
    project.headline = hash[:headline]
    project.body = hash[:body]
    project.partner = hash[:partner]
    project.excerpt = hash[:excerpt]
    project.client = hash[:client]
    project.agency = hash[:agency]
    project.main_image = hash[:main_image]
    project.thumbnail_smcategory = hash[:thumbnail_smcategory]
    project.thumbnail_lrg = hash[:thumbnail_lrg]
    project.url = project.title.parameterize
    project.title = hash[:title]

    project.save!

  end


# def self.update_project_information_from(hash, id)
#     # raise
#     project = Project.find(id)

#     Project.update(id, project.url) 
    
# end

  def self.get_ordered_list
    return_list = []
    projects = Project.all
    
    return return_list = projects.reverse!
    
  end

   
   
   def to_param
   url
   #"#{title}".parameterize
   #"#{id} #{title}".parameterize
   end

end

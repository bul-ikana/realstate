module Admin
  class ProjectsController < Admin::ApplicationController
    
    def create
      resource = resource_class.new(resource_params)
      resource.user_id = User.first.id
      authorize_resource(resource)

      if resource.save
        redirect_to(
          [namespace, resource],
          notice: translate_with_resource("create.success"),
        )
      else
        render :new, locals: {
          page: Administrate::Page::Form.new(dashboard, resource),
        }
      end
    end

  end
end

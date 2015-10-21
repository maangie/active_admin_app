class StaffsController < InheritedResources::Base

  private

    def staff_params
      params.require(:staff).permit(:code)
    end
end


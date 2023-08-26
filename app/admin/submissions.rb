ActiveAdmin.register Submission do
  config.sort_order = "created_at_desc"

  form do |f|
    f.inputs "Submission Details" do
      if f.object.file.attached?
        f.input :file, hint: image_tag(url_for(f.object.file), size: "1500x500")
      else
        f.input :file, as: :file
      end
    end
    f.actions
  end

  show do
    attributes_table do
      row :file do |submission|
        if submission.file.attached?
          image_tag url_for(submission.file), size: "1500x500"
        else
          content_tag(:span, "No file attached")
        end
      end
      row :created_at
    end
  end

  index do
    selectable_column
    column :file do |submission|
      if submission.file.attached?
        image_tag url_for(submission.file), size: "600x200"
      else
        content_tag(:span, "No file attached")
      end
    end
    actions
  end
end

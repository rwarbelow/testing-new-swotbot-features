json.array!(@student_actions) do |student_action|
  json.extract! student_action, :id, :action_type_id, :student_id
  json.url student_action_url(student_action, format: :json)
end

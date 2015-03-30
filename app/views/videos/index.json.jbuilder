json.array!(@videos) do |video|
  json.extract! video, :id, :title, :desc, :teacher, :course_id
  json.url video_url(video, format: :json)
end

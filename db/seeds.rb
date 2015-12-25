app = Rpush::Gcm::App.new
app.name = "push_sample_android"
app.auth_key = ENV["GCM_API_KEY"]
app.connections = 1
app.save!

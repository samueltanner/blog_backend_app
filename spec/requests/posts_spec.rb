require "rails_helper"

RSpec.describe "Posts", type: :request do
  describe "GET /posts" do
    it "returns array of posts" do
      user = User.create!(name: "Peter", email: "peter@email.com", password: "password")

      Post.create!([{ user_id: user.id, title: "Test Blog Post Title", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam congue consequat urna, nec volutpat ligula interdum auctor. In tincidunt auctor consequat. Fusce accumsan varius iaculis. Donec sed odio risus. Pellentesque varius scelerisque enim at sodales. Nunc ut euismod mi, mollis fringilla risus. Donec ac mi et nunc aliquet porta. Aliquam imperdiet, risus vitae cursus mollis, magna enim ornare libero, vel faucibus diam justo quis urna. Maecenas hendrerit interdum risus, non consectetur mauris tincidunt eget. Vestibulum lobortis at lectus quis fringilla. Nam ut molestie nunc. Aenean non aliquet sapien, id posuere felis.", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d5/Lorem_ipsum_flush_justified.svg/1200px-Lorem_ipsum_flush_justified.svg.png" }, { user_id: user.id, title: "Test Blog Post Title 2", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam congue consequat urna, nec volutpat ligula interdum auctor. In tincidunt auctor consequat. Fusce accumsan varius iaculis. Donec sed odio risus. Pellentesque varius scelerisque enim at sodales. Nunc ut euismod mi, mollis fringilla risus. Donec ac mi et nunc aliquet porta. Aliquam imperdiet, risus vitae cursus mollis, magna enim ornare libero, vel faucibus diam justo quis urna. Maecenas hendrerit interdum risus, non consectetur mauris tincidunt eget. Vestibulum lobortis at lectus quis fringilla. Nam ut molestie nunc. Aenean non aliquet sapien, id posuere felis.", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d5/Lorem_ipsum_flush_justified.svg/1200px-Lorem_ipsum_flush_justified.svg.png" }])

      get "/api/posts"
      posts = JSON.parse(response.body)

      expect(response).to have_http_status(200)
      expect(posts.length).to eq(2)
    end
  end

  describe "GET /recipes/:id" do
    it "returns a hash with appropriate attributes" do
      user = User.create!(name: "Peter", email: "peter@email.com", password: "password")

      Post.create!([{ user_id: user.id, title: "Test Blog Post Title", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam congue consequat urna, nec volutpat ligula interdum auctor. In tincidunt auctor consequat. Fusce accumsan varius iaculis. Donec sed odio risus. Pellentesque varius scelerisque enim at sodales. Nunc ut euismod mi, mollis fringilla risus. Donec ac mi et nunc aliquet porta. Aliquam imperdiet, risus vitae cursus mollis, magna enim ornare libero, vel faucibus diam justo quis urna. Maecenas hendrerit interdum risus, non consectetur mauris tincidunt eget. Vestibulum lobortis at lectus quis fringilla. Nam ut molestie nunc. Aenean non aliquet sapien, id posuere felis.", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d5/Lorem_ipsum_flush_justified.svg/1200px-Lorem_ipsum_flush_justified.svg.png" }, { user_id: user.id, title: "Test Blog Post Title 2", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam congue consequat urna, nec volutpat ligula interdum auctor. In tincidunt auctor consequat. Fusce accumsan varius iaculis. Donec sed odio risus. Pellentesque varius scelerisque enim at sodales. Nunc ut euismod mi, mollis fringilla risus. Donec ac mi et nunc aliquet porta. Aliquam imperdiet, risus vitae cursus mollis, magna enim ornare libero, vel faucibus diam justo quis urna. Maecenas hendrerit interdum risus, non consectetur mauris tincidunt eget. Vestibulum lobortis at lectus quis fringilla. Nam ut molestie nunc. Aenean non aliquet sapien, id posuere felis.", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d5/Lorem_ipsum_flush_justified.svg/1200px-Lorem_ipsum_flush_justified.svg.png" }])

      post_id = Post.last.id
      get "/api/posts/#{post_id}"
      post = JSON.parse(response.body)

      expect(response).to have_http_status(200)
      expect(post["title"]).to eq("Test Blog Post Title 2")
    end
  end
end

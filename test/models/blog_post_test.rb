require "test_helper"

class BlogPostTest < ActiveSupport::TestCase
  test "draft? return true for draft blog post"
    binding.irb
    BlogPost.new(published_at: nill).draft?

end

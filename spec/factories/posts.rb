FactoryGirl.define do
  factory(:post) do
    title('First post')
    content('content')
    user
  end
end

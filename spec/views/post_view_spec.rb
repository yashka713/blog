require 'rails_helper'

RSpec.describe 'post/show', type: :view do
  it 'renders comments/_comment partial for each event' do
    assign(:comments, Comment.new(commenter: 'test commenter', body: 'test text'))
    render
    expect(view).to render_template(partial: 'comments/_comment', count: 1)
  end
end

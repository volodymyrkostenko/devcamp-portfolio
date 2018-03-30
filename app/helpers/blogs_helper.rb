module BlogsHelper
  def gravatar_helper user
    image_tag "https://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(user.email)}", width: 60
  end

  def code text
    puts text
    re = /```[^```]*```/
    reg = /.*\s/
    code =  text.scan(re)
    if code.empty?
        text
    else
      code.each do |code|
         pattern= code
         code.delete!("```")
         lang =code.slice(reg).strip
         block =code.sub(reg, "")
         block_code=CodeRay.scan( block, lang).div
         text.gsub!(pattern, block_code)
      end
      text.delete!("```").html_safe

    end  
  end
  


  
  def markdown(text)
    options = {
    
      hard_wrap:       true,
      space_after_headers: true,
      fenced_code_blocks: false
    }

    extensions = {
      autolink:           true,
      superscript:        true,
      disable_indented_code_blocks: true
    }

    renderer = Redcarpet::Render::HTML.new(options)
    markdown = Redcarpet::Markdown.new(renderer, extensions)
    text_with_code = code(text)
    markdown.render(text_with_code).html_safe
  end

  def blog_status_color blog
    'color: red;' if blog.draft?
  end
end

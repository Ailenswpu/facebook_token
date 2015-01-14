require "facebook_token/version"
require "mechanize"

module FacebookToken
  class InvlidAccountException < StandardError;end
  
  class Dev
    def self.fetch(opt = {})
      agent = Mechanize.new
      agent.follow_meta_refresh = true
      agent.get('https://www.facebook.com')
      form = agent.page.form_with(id: 'login_form')
      form.email = opt[:email] || opt['email']
      form.pass  = opt[:password] || opt['password']
      agent.submit(form)
      agent.get("https://developers.facebook.com/tools/accesstoken/?app_id=#{opt[:app_id] || opt['app_id']}")
      begin
        agent.page.search("table")[0].search("code")[0].text
      rescue Exception => e
        raise InvlidAccountException, 'Invlid acount or facebook app_id'
      end
    end
  end
end

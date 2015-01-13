require "facebook_token/version"

module FacebookToken
  class FBToken
    def self.fetch(email = nil, password = nil, app_id = nil)
      agent = Mechanize.new
      agent.follow_meta_refresh = true
      agent.get('https://www.facebook.com')
      form = agent.page.form_with(id: 'login_form')
      form.email = email
      form.pass = password
      agent.submit(form)
      agent.get("https://developers.facebook.com/tools/accesstoken/?app_id=#{app_id}")
      agent.page.search("table")[0].search("code")[0].text
    end
  end
end

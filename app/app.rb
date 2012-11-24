class HasBeen < Padrino::Application
  register Padrino::Rendering
  register Padrino::Mailer
  register Padrino::Helpers

  enable :sessions

  set :datadir, "config/travellers"
  set :url_template, "http://{traveller}.hasbeen.in/{location}"

  configure :development do
    set :url_template, "http://{traveller}.hasbeen.dev/{location}"
  end

  configure :test do
    set :datadir, "spec/files"
    set :url_template, "http://{traveller}.hasbeen.dev/{location}"
  end
end

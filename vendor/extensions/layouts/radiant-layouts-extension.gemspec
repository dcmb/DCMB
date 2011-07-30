# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{radiant-layouts-extension}
  s.version = "1.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Michael Klett", "Jim Gay", "William Ross", "Tony Issakov", "Dirk Kelly"]
  s.date = %q{2010-10-26}
  s.description = %q{Extends Radiant Layouts to support nesting, sharing with Rails Controllers and rendering HAML}
  s.email = %q{dk@dirkkelly.com}
  s.extra_rdoc_files = [
    "README.md"
  ]
  s.files = [
    ".gitignore",
     "MIT-LICENSE",
     "README.md",
     "Rakefile",
     "VERSION",
     "app/models/haml_filter.rb",
     "app/models/rails_page.rb",
     "app/views/layouts/radiant.html.haml",
     "config/routes.rb",
     "layouts_extension.rb",
     "lib/haml_layouts/models/layout.rb",
     "lib/haml_layouts/models/page.rb",
     "lib/nested_layouts/tags/core.rb",
     "lib/share_layouts/controllers/action_controller.rb",
     "lib/share_layouts/helpers/action_view.rb",
     "lib/tasks/layouts_extension_tasks.rake",
     "radiant-layouts-extension.gemspec",
     "spec/controllers/share_controller_spec.rb",
     "spec/datasets/layouts_layouts.rb",
     "spec/datasets/layouts_pages.rb",
     "spec/lib/haml_layouts/haml_layouts_extension_spec.rb",
     "spec/lib/haml_layouts/models/layout_spec.rb",
     "spec/lib/haml_layouts/models/page_spec.rb",
     "spec/lib/nested_layouts/nested_layouts_extension_spec.rb",
     "spec/lib/nested_layouts/tags/core_spec.rb",
     "spec/lib/share_layouts/controllers/action_controller_spec.rb",
     "spec/lib/share_layouts/helpers/action_view_spec.rb",
     "spec/lib/share_layouts/share_layouts_extension_spec.rb",
     "spec/models/haml_filter_spec.rb",
     "spec/models/rails_page_spec.rb",
     "spec/spec.opts",
     "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/squaretalent/radiant-layouts-extension}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Extends Radiant Layouts to support nesting, sharing with Rails Controllers and rendering HAML}
  s.test_files = [
    "spec/controllers/share_controller_spec.rb",
     "spec/datasets/layouts_layouts.rb",
     "spec/datasets/layouts_pages.rb",
     "spec/lib/haml_layouts/haml_layouts_extension_spec.rb",
     "spec/lib/haml_layouts/models/layout_spec.rb",
     "spec/lib/haml_layouts/models/page_spec.rb",
     "spec/lib/nested_layouts/nested_layouts_extension_spec.rb",
     "spec/lib/nested_layouts/tags/core_spec.rb",
     "spec/lib/share_layouts/controllers/action_controller_spec.rb",
     "spec/lib/share_layouts/helpers/action_view_spec.rb",
     "spec/lib/share_layouts/share_layouts_extension_spec.rb",
     "spec/models/haml_filter_spec.rb",
     "spec/models/rails_page_spec.rb",
     "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 1.3.0"])
      s.add_development_dependency(%q<rspec-rails>, [">= 1.3.2"])
      s.add_development_dependency(%q<cucumber>, [">= 0.8.5"])
      s.add_development_dependency(%q<cucumber-rails>, [">= 0.3.2"])
      s.add_development_dependency(%q<database_cleaner>, [">= 0.4.3"])
      s.add_development_dependency(%q<ruby-debug>, [">= 0.10.3"])
      s.add_development_dependency(%q<webrat>, [">= 0.10.3"])
    else
      s.add_dependency(%q<rspec>, [">= 1.3.0"])
      s.add_dependency(%q<rspec-rails>, [">= 1.3.2"])
      s.add_dependency(%q<cucumber>, [">= 0.8.5"])
      s.add_dependency(%q<cucumber-rails>, [">= 0.3.2"])
      s.add_dependency(%q<database_cleaner>, [">= 0.4.3"])
      s.add_dependency(%q<ruby-debug>, [">= 0.10.3"])
      s.add_dependency(%q<webrat>, [">= 0.10.3"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 1.3.0"])
    s.add_dependency(%q<rspec-rails>, [">= 1.3.2"])
    s.add_dependency(%q<cucumber>, [">= 0.8.5"])
    s.add_dependency(%q<cucumber-rails>, [">= 0.3.2"])
    s.add_dependency(%q<database_cleaner>, [">= 0.4.3"])
    s.add_dependency(%q<ruby-debug>, [">= 0.10.3"])
    s.add_dependency(%q<webrat>, [">= 0.10.3"])
  end
end


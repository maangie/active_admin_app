# active_admin_app
Active Admin の勉強

c.f. [Ruby - Rails 4 ＆ Active Admin で、マスタCRUD系の管理画面を秒速で作る方法 - Qiita](http://qiita.com/hkusu/items/3b0fb7f94a254e2ed6fd)

## インストール方法

```
% git clone https://github.com/maangie/active_admin_app.git
% cd active_admin_app
% bin/bundle install
% bin/rake db:migrate
% bin/rake db:seed
% bin/rails server
```

## テスト

```
% bin/rake db:seed RAILS_ENV=test
% bin/rspec
```

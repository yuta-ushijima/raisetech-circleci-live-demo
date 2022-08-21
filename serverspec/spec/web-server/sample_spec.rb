require 'spec_helper'

%w[git nginx].each do |pkg|
  describe package(pkg) do
    it { should be_installed }
  end
end

describe command("git --version") do
  context "指定したバージョンのインストール確認" do
    its(:stdout) { should match /git version 2\.37\.*/}
  end
end

describe command("rbenv -v") do
  context "指定したバージョンのインストール確認" do
    its(:stdout) { should match /rbenv 1\.2\.*/}
  end
end

%w[gcc-c++ glibc-headers openssl-devel readline
   libyaml-devel readline-devel zlib zlib-devel
   libffi-devel libxml2 libxslt libxml2-devel
   libxslt-devel sqlite-devel].each do |pkg|
   describe package(pkg) do
      it { should be_installed }
   end
end

describe command("ruby -v") do
  context "指定したバージョンのインストール確認" do
    its(:stdout) { should match /ruby 3\.0\.0/}
  end
end

describe command("node -v") do
  context "指定したバージョンのインストール確認" do
    its(:stdout) { should match /v16\.17\.0/}
  end
end
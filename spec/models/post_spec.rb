# coding: utf-8
require 'spec_helper'

describe Post do
  let(:user) { Fabricate(:user) }

  before do
  end

  subject { post }

  describe "基礎仕様" do
    let(:post) { Post.new }
    it { should.respond_to?(:author_id) }
  end

  describe "#author_id" do
    before { @expected = "1111" }
    let(:post) { Post.new(:author_id => @expected) }
    its(:author_id) { should == @expected }
  end

  describe "#save" do
    context "ユーザのポストとして保存" do
      let(:post) { Fabricate.build(:post) }
      before do
        @expected = user.posts.size + 1
        post.user_id = user.id
        post.save
      end
      subject { user.posts.size }
      it { should == @expected }
    end

    context "Followerのフィードタイムラインに投げる" do
    end
  end
end

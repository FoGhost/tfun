# coding: utf-8
require 'spec_helper'

describe TextPost do
  let(:user) { Fabricate(:user) }
  before do
  end
  subject { post }

  describe "基礎仕様" do
    let(:post) { TextPost.new }
    it { should.respond_to?(:content) }
  end

  describe "#content" do
    before { @expected = "foobar" }
    let(:post) { TextPost.new(:content => @expected) }
    its(:content) { should == @expected }
  end

  describe "#save" do
    context "正常の場合" do
      context "ユーザのポストとして保存" do
        let(:post) { Fabricate.build(:text_post) }
        before do
          @expected = user.text_posts.size + 1
          post.user_id = user.id
          post.save
        end
        subject { user.text_posts.size }
        it { should == @expected }
      end

      context "Followerのフィードタイムラインに投げる" do
      end
    end

    context "異常の場合" do
      context "content is nil" do
        let(:post) { TextPost.new(:content => nil) }
        its(:save) { should == false }
      end
    end
  end
end

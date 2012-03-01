# coding: utf-8
require 'spec_helper'

describe Post do
  let(:user) { Fabricate(:user) }

  before do
  end

  context "インスタンスでは" do
    subject { post }

    describe "基礎仕様" do
      let(:post) { Post.new }
      it { should.respond_to?(:content) }
      it { should.respond_to?(:author_id) }
      it { should.respond_to?(:type) }
    end

    describe "#content" do
      before { @expected = "foobar" }
      let(:post) { Post.new(:content => @expected) }
      its(:content) { should == @expected }
    end

    describe "#author_id" do
      before { @expected = "1111" }
      let(:post) { Post.new(:author_id => @expected) }
      its(:author_id) { should == @expected }
    end

    describe "#type" do
      before { @expected = "text" }
      let(:post) { Post.new(:tyle => @expected) }
    end

    describe "#save" do
      context "正常の場合" do
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

      context "異常の場合" do
        context "content is nil" do
          let(:post) { Post.new(:content => nil) }
          its(:save) { should == false }
        end

      end
    end
  end

  context "クラスでは" do
    subject { Post }
  end
end

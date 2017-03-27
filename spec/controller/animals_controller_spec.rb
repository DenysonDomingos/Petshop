require 'rails_helper'

RSpec.describe AnimalsController, :type => :controller do

  describe "GET #index" do

    context 'ransack - finds specific animal' do

      let!(:animal1) { Animal.create(name: 'joao1', breed: 'pug', nameowner: 'carlos') }
      let!(:animal2) { Animal.create(name: 'joao2', breed: 'pastor alemao', nameowner: 'antonio') }

      context 'search by name' do
        before { get :index, q: {name_cont: 'joao2'}}

        it "should find just one animal" do
          expect(assigns(:animals).first).to eq(animal2)
        end
        it { should render_template(:index) }
      end

      context 'search by breed' do
        before { get :index, q: {breed_cont: 'pug'}}

        it "should find just one animal" do
          expect(assigns(:animals).first).to eq(animal1)
        end
        it { should render_template(:index) }
      end

      context 'search by nameowner' do
        before { get :index, q: {nameowner_cont: 'carlos'}}

        it "should find just one animal" do
          expect(assigns(:animals).first).to eq(animal1)
        end
        it { should render_template(:index) }
      end
    end
  end
end

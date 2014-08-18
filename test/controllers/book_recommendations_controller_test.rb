require 'test_helper'

class BookRecommendationsControllerTest < ActionController::TestCase
  setup do
    @book_recommendation = book_recommendations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:book_recommendations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create book_recommendation" do
    assert_difference('BookRecommendation.count') do
      post :create, book_recommendation: { blurb: @book_recommendation.blurb, book_id: @book_recommendation.book_id, user_id: @book_recommendation.user_id }
    end

    assert_redirected_to book_recommendation_path(assigns(:book_recommendation))
  end

  test "should show book_recommendation" do
    get :show, id: @book_recommendation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @book_recommendation
    assert_response :success
  end

  test "should update book_recommendation" do
    patch :update, id: @book_recommendation, book_recommendation: { blurb: @book_recommendation.blurb, book_id: @book_recommendation.book_id, user_id: @book_recommendation.user_id }
    assert_redirected_to book_recommendation_path(assigns(:book_recommendation))
  end

  test "should destroy book_recommendation" do
    assert_difference('BookRecommendation.count', -1) do
      delete :destroy, id: @book_recommendation
    end

    assert_redirected_to book_recommendations_path
  end
end

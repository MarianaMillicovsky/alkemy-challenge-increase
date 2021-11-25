require "test_helper"

class FootersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @footer = footers(:one)
  end

  test "should get index" do
    get footers_url, as: :json
    assert_response :success
  end

  test "should create footer" do
    assert_difference('Footer.count') do
      post footers_url, params: { footer: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show footer" do
    get footer_url(@footer), as: :json
    assert_response :success
  end

  test "should update footer" do
    patch footer_url(@footer), params: { footer: {  } }, as: :json
    assert_response 200
  end

  test "should destroy footer" do
    assert_difference('Footer.count', -1) do
      delete footer_url(@footer), as: :json
    end

    assert_response 204
  end
end

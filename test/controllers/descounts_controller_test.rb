require "test_helper"

class DescountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @descount = descounts(:one)
  end

  test "should get index" do
    get descounts_url, as: :json
    assert_response :success
  end

  test "should create descount" do
    assert_difference('Descount.count') do
      post descounts_url, params: { descount: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show descount" do
    get descount_url(@descount), as: :json
    assert_response :success
  end

  test "should update descount" do
    patch descount_url(@descount), params: { descount: {  } }, as: :json
    assert_response 200
  end

  test "should destroy descount" do
    assert_difference('Descount.count', -1) do
      delete descount_url(@descount), as: :json
    end

    assert_response 204
  end
end

require "test_helper"

class filetransactionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @filetransactiontiofiletransactionnsactions(:one)
  end

  test "should get index" do
    get filetransactions_url, as: :json
    assert_response :success
  end

  test "should create filetransactiontion" do
    assert_difference('filetransactiontion.count') do
      post filetransactions_url, paramsfiletransactionnsaction: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show filetransactiontion" do
    get filetransactiontion_ufiletransactionnsaction), as: :json
    assert_response :success
  end

  test "should update filetransactiontion" do
    patch filetransactiontion_ufiletransactionnsaction), pafiletransactionetransaction: {  } }, as: :json
    assert_response 200
  end

  test "should destroy filetransactiontion" do
    assert_difference('filetransactiontion.count', -1) do
      delete filetransactiontion_ufiletransactionnsaction), as: :json
    end

    assert_response 204
  end
end

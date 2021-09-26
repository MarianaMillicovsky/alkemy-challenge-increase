require "test_helper"

class AccountBalancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @account_balance = account_balances(:one)
  end

  test "should get index" do
    get account_balances_url, as: :json
    assert_response :success
  end

  test "should create account_balance" do
    assert_difference('AccountBalance.count') do
      post account_balances_url, params: { account_balance: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show account_balance" do
    get account_balance_url(@account_balance), as: :json
    assert_response :success
  end

  test "should update account_balance" do
    patch account_balance_url(@account_balance), params: { account_balance: {  } }, as: :json
    assert_response 200
  end

  test "should destroy account_balance" do
    assert_difference('AccountBalance.count', -1) do
      delete account_balance_url(@account_balance), as: :json
    end

    assert_response 204
  end
end

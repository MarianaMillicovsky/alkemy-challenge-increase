require "test_helper"

class CabecerasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cabecera = cabeceras(:one)
  end

  test "should get index" do
    get cabeceras_url, as: :json
    assert_response :success
  end

  test "should create cabecera" do
    assert_difference('Cabecera.count') do
      post cabeceras_url, params: { cabecera: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show cabecera" do
    get cabecera_url(@cabecera), as: :json
    assert_response :success
  end

  test "should update cabecera" do
    patch cabecera_url(@cabecera), params: { cabecera: {  } }, as: :json
    assert_response 200
  end

  test "should destroy cabecera" do
    assert_difference('Cabecera.count', -1) do
      delete cabecera_url(@cabecera), as: :json
    end

    assert_response 204
  end
end

require "test_helper"

class PlayersQueuesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @players_queue = players_queues(:one)
  end

  test "should get index" do
    get players_queues_url
    assert_response :success
  end

  test "should get new" do
    get new_players_queue_url
    assert_response :success
  end

  test "should create players_queue" do
    assert_difference("PlayersQueue.count") do
      post players_queues_url, params: { players_queue: { players: @players_queue.players, room_id: @players_queue.room_id, user_id: @players_queue.user_id } }
    end

    assert_redirected_to players_queue_url(PlayersQueue.last)
  end

  test "should show players_queue" do
    get players_queue_url(@players_queue)
    assert_response :success
  end

  test "should get edit" do
    get edit_players_queue_url(@players_queue)
    assert_response :success
  end

  test "should update players_queue" do
    patch players_queue_url(@players_queue), params: { players_queue: { players: @players_queue.players, room_id: @players_queue.room_id, user_id: @players_queue.user_id } }
    assert_redirected_to players_queue_url(@players_queue)
  end

  test "should destroy players_queue" do
    assert_difference("PlayersQueue.count", -1) do
      delete players_queue_url(@players_queue)
    end

    assert_redirected_to players_queues_url
  end
end

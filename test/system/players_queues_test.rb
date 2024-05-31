require "application_system_test_case"

class PlayersQueuesTest < ApplicationSystemTestCase
  setup do
    @players_queue = players_queues(:one)
  end

  test "visiting the index" do
    visit players_queues_url
    assert_selector "h1", text: "Players queues"
  end

  test "should create players queue" do
    visit players_queues_url
    click_on "New players queue"

    fill_in "Players", with: @players_queue.players
    fill_in "Room", with: @players_queue.room_id
    fill_in "User", with: @players_queue.user_id
    click_on "Create Players queue"

    assert_text "Players queue was successfully created"
    click_on "Back"
  end

  test "should update Players queue" do
    visit players_queue_url(@players_queue)
    click_on "Edit this players queue", match: :first

    fill_in "Players", with: @players_queue.players
    fill_in "Room", with: @players_queue.room_id
    fill_in "User", with: @players_queue.user_id
    click_on "Update Players queue"

    assert_text "Players queue was successfully updated"
    click_on "Back"
  end

  test "should destroy Players queue" do
    visit players_queue_url(@players_queue)
    click_on "Destroy this players queue", match: :first

    assert_text "Players queue was successfully destroyed"
  end
end

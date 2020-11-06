require "ibm_watson/authenticators"
require "ibm_watson/text_to_speech_v1"
include IBMWatson

ActiveAdmin.register_page "Test" do

  def index
  end
  test1 = "This is again a new file"
  content do
    # authenticator = Authenticators::IamAuthenticator.new(
    # apikey: ENV['ibm_watson_key']
    # )

    # text_to_speech = TextToSpeechV1.new(
    # authenticator: authenticator
    # )
    # text_to_speech.service_url = ENV['ibm_watson_url']

    # File.open("app/assets/audio/first.wav", "wb") do |audio_file|
    # response = text_to_speech.synthesize(
    #     text: test1,
    #     accept: "audio/wav",
    #     voice: "en-US_AllisonV3Voice"
    # )
    # audio_file.write(response.result)
    # end

    render partial: 'test'

  end
end

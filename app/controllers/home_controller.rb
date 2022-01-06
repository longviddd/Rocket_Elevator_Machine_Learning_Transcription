# frozen_string_literal: true
require 'azure_stt'
class HomeController < ApplicationController
  def home_params
    params.permit(:transcription_url)
  end
  def index; end

  def commercial; end

  def residential; end

  def quote; end
  def transcription; end
  def loadTranscription
    AzureSTT.configure do |config|
      config.region = 'eastus'
      config.subscription_key = 'your_key'
    end
    puts 'function loaded'
    json = "857fd42ac6944a76a27fbc3df622b2d6";
      puts 'function loaded 2'
      properties = {
        "diarizationEnabled" => false,
        "wordLevelTimestampsEnabled" => false,
        "punctuationMode" => "DictatedAndAutomatic",
        "profanityFilterMode" => "Masked"
      }
      content_urls = []
      content_urls.append(params[:transcription_url])
      session = AzureSTT::Session.new(region: 'eastus', subscription_key: '857fd42ac6944a76a27fbc3df622b2d6')
      transcription = session.create_transcription(
        content_urls: content_urls,
        properties: properties,
        locale: 'en-US',
        display_name: 'transcription2'
      )
      puts 'transcription created'
      id = transcription.id
      puts transcription.id
      while(!transcription.finished?) do
        puts 'waiting 30s'
        sleep(30)
        
        transcription = session.get_transcription(id)
      end
      if(transcription.succeeded?)
        puts transcription.results.first.text
      end
      session.delete_transcription(id)
      @returnJson = {
        'transcription' => transcription.results.first.text
      }
      
    
    render json: @returnJson

  end
end

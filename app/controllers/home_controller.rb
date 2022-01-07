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
      session = AzureSTT::Session.new(region: ENV['MICROSOFT_AZURE_REGION'], subscription_key: ENV['MICROSOFT_AZURE_KEY'])
      transcription = session.create_transcription(
        content_urls: content_urls,
        properties: properties,
        locale: 'en-US',
        display_name: 'transcription2'
      )
      puts 'transcription created'
      id = transcription.id
      puts transcription.id
      i = 0
      while(!transcription.finished?) do

        puts i
        i += 1;
        sleep(1)
        
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
  def loadTranscriptionFrench
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
        locale: 'fr-CA',
        display_name: 'transcription2'
      )
      puts 'transcription created'
      id = transcription.id
      puts transcription.id
      i = 0
      while(!transcription.finished?) do

        puts i
        i += 1;
        sleep(1)
        
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

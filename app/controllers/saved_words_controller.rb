class SavedWordsController < ApplicationController
    def index
        savedWords = SavedWord.all
        render json: savedWords, except: [:created_at, :updated_at]
    end

    def show
        savedWord = SavedWord.find(params[:id])
        render json: savedWord, except: [:created_at, :updated_at]
    end

    def create
        savedWord = SavedWord.new(savedWord_params)
        if savedWord.save
        render json: {savedWord: savedWord},  except: [:created_at, :updated_at]
        else
        render json: {errors: savedWord.errors.full_messages}
        end
    end

    def update
        savedWord = SavedWord.find_by(id: params[:id])
        savedWord.update(savedWord_params)
        render json: savedWord, except: [:created_at, :updated_at]
     end 
  
     def destroy 
        savedWord = SavedWord.find_by(id: params[:id])
        savedWord.destroy
     end 

    private 

    def savedWord_params
        params.require(:savedWord).permit(:word, :definition, :example, :word_type)
    end
end

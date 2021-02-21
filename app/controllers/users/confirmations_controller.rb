# frozen_string_literal: true

class Users::ConfirmationsController < Devise::ConfirmationsController

  #def show
    #resend_confirmation_instructions
  #end
  # GET /resource/confirmation/new
  # def new
  #   super
  # end

  # POST /resource/confirmation
  # def create
  #   super
  # end

  # GET /resource/confirmation?confirmation_token=abcdef
  # def show
  #   self.resource = resource_class.find_by_confirmation_token(params[:confirmation_token])

  #   if resource.nil? || resource.confirmed?
  #     # トークンが不正な場合、アカウント登録(パスワード登録)が済んでいる場合
  #     self.resource = resource_class.confirm_by_token(params[:confirmation_token])
  #     resend_confirmation_instructions
  #   end
  # end

  # protected

  # The path used after resending confirmation instructions.
  # def after_resending_confirmation_instructions_path_for(resource_name)
  #   super(resource_name)
  # end

  # The path used after confirmation.
  # def after_confirmation_path_for(resource_name, resource)
  #   super(resource_name, resource)
  # end
end

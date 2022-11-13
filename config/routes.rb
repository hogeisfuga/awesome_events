# == Route Map
#
#                    Prefix Verb   URI Pattern                                                                              Controller#Action
#             event_tickets GET    /events/:event_id/tickets(.:format)                                                      tickets#index
#                           POST   /events/:event_id/tickets(.:format)                                                      tickets#create
#          new_event_ticket GET    /events/:event_id/tickets/new(.:format)                                                  tickets#new
#         edit_event_ticket GET    /events/:event_id/tickets/:id/edit(.:format)                                             tickets#edit
#              event_ticket GET    /events/:event_id/tickets/:id(.:format)                                                  tickets#show
#                           PATCH  /events/:event_id/tickets/:id(.:format)                                                  tickets#update
#                           PUT    /events/:event_id/tickets/:id(.:format)                                                  tickets#update
#                           DELETE /events/:event_id/tickets/:id(.:format)                                                  tickets#destroy
#                    events GET    /events(.:format)                                                                        events#index
#                           POST   /events(.:format)                                                                        events#create
#                 new_event GET    /events/new(.:format)                                                                    events#new
#                edit_event GET    /events/:id/edit(.:format)                                                               events#edit
#                     event GET    /events/:id(.:format)                                                                    events#show
#                           PATCH  /events/:id(.:format)                                                                    events#update
#                           PUT    /events/:id(.:format)                                                                    events#update
#                           DELETE /events/:id(.:format)                                                                    events#destroy
#                      root GET    /                                                                                        welcome#index
#                           GET    /auth/:provider/callback(.:format)                                                       session#create
#                    logout DELETE /logout(.:format)                                                                        session#destroy
#               retirements GET    /retirements(.:format)                                                                   retirements#index
#                           POST   /retirements(.:format)                                                                   retirements#create
#            new_retirement GET    /retirements/new(.:format)                                                               retirements#new
#           edit_retirement GET    /retirements/:id/edit(.:format)                                                          retirements#edit
#                retirement GET    /retirements/:id(.:format)                                                               retirements#show
#                           PATCH  /retirements/:id(.:format)                                                               retirements#update
#                           PUT    /retirements/:id(.:format)                                                               retirements#update
#                           DELETE /retirements/:id(.:format)                                                               retirements#destroy
#        rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
# rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#        rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
# update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#      rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create

Rails.application.routes.draw do
  resources :events do
    resources :tickets
  end
  root 'welcome#index'
  get "/auth/:provider/callback" => "session#create"
  delete "/logout" => "session#destroy"

  resources :retirements
end

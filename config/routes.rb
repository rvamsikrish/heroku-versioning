PwaAppVersion::Engine.routes.draw do
  root to: 'version#latest', defaults: { format: :json }
end

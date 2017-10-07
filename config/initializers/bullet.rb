if defined?(Bullet)
  Rails.application.config.after_initialize do
    Bullet.enable = true
    Bullet.unused_eager_loading_enable = false
    Bullet.bullet_logger = true
    Bullet.rails_logger = true
  end
end

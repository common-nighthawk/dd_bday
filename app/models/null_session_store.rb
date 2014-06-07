class NullSessionStore < ActionDispatch::Session::AbstractStore
  def initialize(app, options = {})
    super
  end

  def get_session(env, sid)
    sid ||= generate_sid
    [sid, {}]
  end

  def set_session(env, sid, session, options)
    sid
  end

  def destroy_session(env, sid, options)
    generate_sid
  end
end

config.middleware.use NullSessionStore

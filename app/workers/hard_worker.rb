class HardWorker
  include Sidekiq::Worker

  def perform(name, count)
    logger.info "#{name}Processing the requests... #{count}"
  end
end

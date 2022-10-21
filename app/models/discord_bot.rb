class DiscordBot
  def initialize
    @bot = Discordrb::Commands::CommandBot.new token: ENV['DISCORD_BOT_TOKEN'],
                                               prefix: 'stup!'
  end
  def start
    @bot.command :s, description: '学習時間の記録を開始します' do |event|
      event.respond '開始時間を記録しました。'
    end

    @bot.command :e, description: '学習時間の記録を終了します' do |event|
      event.respond '終了時間を記録しました。'
    end

    @bot.command :g, description: '対象月の学習時間を取得します' do |event, *args|
      event.respond "#{args[0]}の学習時間を取得します。"
    end
    @bot.run
  end
end

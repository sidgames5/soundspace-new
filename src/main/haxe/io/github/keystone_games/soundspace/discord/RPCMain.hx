package io.github.keystone_games.soundspace.discord;

using io.github.keystone_games.soundspace.discord.DiscordRPC;

class RPCMain {
    public static function init() {}
    
    public static function update(_options : DiscordPresenceOptions) { DiscordRPC.presence(_options); }
    
    public static function shutdown() { DiscordRPC.shutdown(); }
}

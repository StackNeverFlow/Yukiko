module.exports = {
    name: "react",
    category: "Moderation",
    description: "(Not functional)Use this commands to create an emoji reaction to a message and give a role to anyone who click that reaction.",
    usage: "a!react <emoji>, <rolename>",
    run: async (bot, message, args) => {
        message.channel.send("This function is not supported yet.")
    }
}
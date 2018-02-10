#test-bot 3000 is an amazing new bot that can do absolutely nothing!
import discord
from discord.ext import commands
import random

client = discord.Client()

@client.event
async def on_ready():
	print('logged in as')
	print(client.user.name)
	print(client.user.id)
	print('beep-boop')

@client.event
async def on_message(message):
	# don't allow the bot to reply to itself
	if message.author == client.user:
		return

	if message.content.startswith('$guess'):
		await client.send_message(message.channel, 'Guess a number between 1 to 10')

		def guess_check(m):
			return m.content.isdigit()
	
		guess = await client.wait_for_message(timeout = 10.0, author = message.author, check=guess_check)
		answer = random.randint(1,10)
		if guess is None:
			fmt = 'Sorry, you took too long. It was {}.'
			await client.send_message(message.channel, fmt.format(answer))
			return
		if int(guess.content) == answer:
			await client.send_message(message.channel, 'You are right!')
		else:
			await client.send_message(message.channel, 'Sorry, It is actually {}.'.format(answer))


client.run('MzA5NTc4MDMyMDYwODI1NjAw.C-xcsQ.qU7l2QR3_5vQUJWS0ebNPf7o144')



# rustyBot replacing functionality of test-bot3000 after the February Fiasco of 2018
import discord
from discord.ext import commands
import random

description = 'The highly oxidized rusty bot MK01!'
bot = commands.Bot(command_prefix='./',description=description)

@bot.event
async def on_ready():
	print('logged in as')
	print(bot.user.name)
	print(bot.user.id)
	print('beep-boop')
	await bot.say('beep. boop.')

# hello
@bot.command()
async def hello():
	await bot.say('beep. boop.')

#logout bot
@bot.command()
async def noctis():
	await bot.say('Farewell, smelly humans.')
	await bot.logout()

#get users
@bot.command()
async def users():
	await bot.say('fetching online users')
	for member in bot.get_all_members():
		if member.status is member.status.online:
			await bot.say(member)

#return all channels 
@bot.command()
async def channels():
	channel = bot.get_channel(309537030700793856)
	await bot.say(channel.id)

#choose between items
@bot.command()
async def choose(*choices : str):
	await bot.say(random.choice(choices))

#dice roll cmd
@bot.command()
async def roll(dice : str):
        #rolls dice in 'NdN' fmt
	try:
		rolls, limit = map(int, dice.split('d'))
	except Exception:
		await bot.say('Format has to be NdN')
		return
	result = ','.join(str(random.randint(1,limit)) for r in range(rolls))
	await bot.say(result)

#useless kill cmd atm
@bot.command()
async def kill():
	await bot.say('No mortal can defeat me.')

#multiplication cmd
@bot.command()
async def mul(left : float, right : float):
	try:
		await bot.say(left*right)
	except Exception:
		await bot.say('for x*y: "./mul x y"')

#division cmd
@bot.command()
async def div(left: float, right : float):
	try:
		await bot.say(left/right)
	except Exception:
		await bot.say('for x/y: "./div x y" ')
		return

#subtraction cmd
@bot.command()
async def sub(left : float, right : float):
	try:
        	await bot.say(right - left)
	except Exception:
        	await bot.say('for y - x: "./sub x y" ')
	return

#addition cmd
@bot.command()
async def add(left : float, right : float):
	try:
		await bot.say(left + right)
	except Exception:
		await bot.say('for x + y: "./add x y"')
		return


bot.run("NDExOTk1NjUwOTEwMzIyNzE4.DWD8eg.Jvw0_g9-ZVLLP-mQLm0pwzUYpps")

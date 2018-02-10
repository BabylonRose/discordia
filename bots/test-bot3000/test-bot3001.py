#test-bot 3001 is an amazing new bot that can do absolutely nothing!
import discord
from discord.ext import commands
import random
import sqlite3

description = 'The amazing test bot 3000!'
bot = commands.Bot(command_prefix='./',description=description)

@bot.event
async def on_ready():
	print('logged in as')
	print(bot.user.name)
	print(bot.user.id)
	print('beep-boop')
#	await bot.send_message(bot.get_channel(309537030700793856),'basic-bot 3000 is on the scene.',tts=True,embed=None)

#on mention
@bot.event
async def when_mentioned():
	await bot.say('You rang?')\

# LOGIN CODE BEGINS HERE ===============================================
# player submits command to login/register
# login: player submits: ./login <username>
# if username exists in players list, player is logged in
# if player is already playing, login refused.
# register: player submits: ./register <username>
# if username is available within player list, player is created

@bot.command()
async def login(username : str):
	login_access = 0 # set bool for login access
	login_access = player_login(username)
	if login_access is 1: # access granted
		await bot.say('Login successful for ' + username)
	if login_access is 2: #access denied - already logged in
		await bot.say('Login failed - '+username+' is already playing.')
	if login_access is 3: #access denied - no such username
		await bot.say('Login failed - no such player as: '+username)

def player_login(username : str):
	#login function 
	

# END LOGIN CODE =======================================================

# EQUIPMENT CHECK CODE HERE ============================================

# END EQUIPMENT CHECK CODE =============================================

# CRYSTAL CHEST CODE BEGINS HERE =======================================


# END CRYSTAL CHEST CODE ===============================================

#roll on rdt
@bot.command()
async def rdt():
	#connect to DropData database
	db_conn = sqlite3.connect('/home/dakota/discordia/data/DropData.db')
	#create cursor to interact with db
	curs = db_conn.cursor()
	#roll value in 128
	weight = random.randint(1,128)
	for row in curs.execute('SELECT * FROM RDT'):
		weight = weight - int(row[3])
		if weight <= 0:
			if row[1] == 'MegaRare':
				#do stuff	# Handle Mega Rare Table
				mega_weight = random.randint(1,1024)
				for row in curs.execute('SELECT * FROM MegaRare'):
					mega_weight = mega_weight - int(row[3])
					if mega_weight <= 0:
						await bot.say('You received: '+ str(row[2]) + ' ' + row[1])
						return
			if row[1] == 'Gem':	# Handle Gem Table
				gem_weight = random.randint(1,128)
				for row in curs.execute('SELECT * FROM Gem'):
					gem_weight = gem_weight - int(row[3])
					if gem_weight <= 0:
						await bot.say('You received: '+ str(row[2]) + ' ' + row[1])
						return
			await bot.say('You received: '+ str(row[2]) + ' ' + row[1])
			return
	#close database connection
	db_conn.close()
	

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
#	for channel in bot.get_all_channels():
#		await bot.say(channel)
#		await bot.say(channel.id)
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

bot.run('MzA5NTc4MDMyMDYwODI1NjAw.C-xcsQ.qU7l2QR3_5vQUJWS0ebNPf7o144')



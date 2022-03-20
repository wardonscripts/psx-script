getgenv().autoEgg = false;

function buyEgg(eggType)
    spawn(function()
        while getgenv().autoEgg == true do
            local args = {[1] = {[1] = eggType,[2] = false}}
            workspace.__THINGS.__REMOTES:FindFirstChild("buy egg"):InvokeServer(unpack(args))
            wait()
        end
    end)    
end  

buyEgg(selectEgg)

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

local w = library:CreateWindow("Script by wardon") -- Creates the window

local b = w:CreateFolder("AutoEgg") -- Creates the folder(U will put here your buttons,etc)

local selectEgg

b:Dropdown("Sellect Egg",{"Cracked Egg","Spotted Egg","Wood Egg","Grass Egg","Beachball Egg","Coconut Egg","Rock Egg","Geode Egg","Snow Egg","Ice Egg","Icicle Egg","Yeti Egg","Cactus Egg","Spiked Egg","Obsidian Egg","Magma Egg","Dominus Egg","Enchanted Egg","Relic Egg","Samurai Egg","Rainbow Egg","Haunted Egg","Hell Egg","Heaven Egg","Empyrean Egg","Metal Egg","Tech Egg","Titanium Egg","Dark Tech Egg","Steampunk Egg","Mechanical Egg","Lab Egg","Alien Egg","Glitch Egg","Hacker Egg","Axolotl Egg","Shiny Axolotl Egg"},true,function(eggValue) --true/false, replaces the current title "Dropdown" with the option that t
    selectEgg = eggValue;
    print(selectEgg)
end)

b:Toggle("Auto Egg",function(bool)
    getgenv().autoEgg = bool
    print('Auto Egg is:', bool)
    if selectEgg then
        if bool then
            buyEgg(selectEgg);  
        end 
    end   
end)

b:DestroyGui()


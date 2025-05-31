require "ISUI/ISPanel"
local FONT_HGT_SMALL = getTextManager():getFontHeight(UIFont.Small)

local shopItemsList = {}
shopItemsList["name1"] = "item1"
shopItemsList["name2"] = "item2"
shopItemsList["name3"] = "item3"
shopItemsList["name4"] = "item4"
shopItemsList["name5"] = "item5"
shopItemsList["name6"] = "item6"
shopItemsList["name7"] = "item7"
shopItemsList["name8"] = "item8"
shopItemsList["name9"] = "item9"
shopItemsList["name10"] = "item10"
shopItemsList["name11"] = "item11"
shopItemsList["name12"] = "item12"
shopItemsList["name13"] = "item13"

MyUI = ISPanel:derive("MyUI");

function MyUI:initialise()
    ISPanel.initialise(self);
    self:create();
end

function MyUI:prerender()
    ISPanel.prerender(self);
    self:drawText("SHOP", 10 ,10, 1,1,1,1, UIFont.Large);
end

function MyUI:render()
end

function MyUI:create()
    local btnWid = 75
    local btnHgt = getTextManager():getFontHeight(UIFont.Small) + 2 * 4
    local padBottom = 10

    self.exitbutton = ISButton:new(self:getWidth() - btnWid - 5, btnHgt, btnWid, btnHgt, "EXIT", self, MyUI.onOptionMouseDown);
    self.exitbutton.internal = "MYEXITBUTTON";
    self.exitbutton:initialise();
    self.exitbutton:instantiate();
    self.exitbutton.borderColor = {r=0.7, g=0.7, b=0.7, a=0.5}; -- Optional
    self:addChild(self.exitbutton);

    self.buybutton = ISButton:new(self:getWidth() - btnWid - 5 - btnWid, self:getHeight() - padBottom - btnHgt, btnWid, btnHgt, "BUY", self, MyUI.onOptionMouseDown);
    self.buybutton.internal = "MYBUYBUTTON";
    self.buybutton:initialise();
    self.buybutton:instantiate();
    self.buybutton.borderColor = {r=0.7, g=0.7, b=0.7, a=0.5}; -- Optional
    self:addChild(self.buybutton);

    self.sellbutton = ISButton:new(self:getWidth() - btnWid - 5, self:getHeight() - padBottom - btnHgt, btnWid, btnHgt, "SELL", self, MyUI.onOptionMouseDown);
    self.sellbutton.internal = "MYSELLBUTTON";
    self.sellbutton:initialise();
    self.sellbutton:instantiate();
    self.sellbutton.borderColor = {r=0.7, g=0.7, b=0.7, a=0.5}; -- Optional
    self:addChild(self.sellbutton);

    self.scrollingList = ISScrollingListBox:new(25, 50, 450, 400)
    self.scrollingList:initialise();
    self.scrollingList:instantiate();
    self.scrollingList.itemheight = 15;
    self.scrollingList.joypadParent = self;
    self.scrollingList.font = UIFont.Small;
    self.scrollingList:setOnMouseDownFunction(self, self.onClickItem);
    self.scrollingList.drawBorder = true;
    self:addChild(self.scrollingList);
end

function MyUI:onOptionMouseDown(button, x, y)
    if button.internal == "MYEXITBUTTON" then
        self:setVisible(false);
        self:removeFromUIManager();
    end
end

function MyUI:new()
    local o = {};
    x = getMouseX() + 10;
    y = getMouseY() + 10;
    o = ISPanel:new(x, y, 500, 500);
    setmetatable(o, self);
    self.__index = self;
    o.variableColor={r=0.9, g=0.55, b=0.1, a=1};
    o.borderColor = {r=0.4, g=0.4, b=0.4, a=1};
    o.backgroundColor = {r=0, g=0, b=0, a=1};
    o.buttonBorderColor = {r=0.7, g=0.7, b=0.7, a=0.5};
    o.zOffsetSmallFont = 25;
    o.moveWithMouse = false;

    return o;
end

function onCustomUIKeyPressed(key)
    if key == 21 then
        local myUI = MyUI:new()
        myUI:initialise();
        myUI:addToUIManager();
    end
end

Events.OnCustomUIKeyPressed.Add(onCustomUIKeyPressed)

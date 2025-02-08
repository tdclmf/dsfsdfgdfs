local HttpService = game:GetService("HttpService")

local API_KEY = "8to4l4iGt3GtF_4fWojjOC4RJTXfXH1k" -- Ваш ключ API
local PASTE_KEY = "eECbNjm6" -- Ключ вашего паста (если он уже создан)
local PASTE_URL = "https://pastebin.com/api/post" -- URL для создания паста
local GET_PASTE_URL = "https://pastebin.com/api/raw_post" -- URL для получения паста
local headers = {
    ["content-type"] = "application/json"
}

    if not success then
        warn("Ошибка при выполнении запроса: " .. response)
        return nil
    end

    return response
end

-- Функция для получения данных из Pastebin
local function getData()
    local response = request({
        Url = GET_PASTE_URL,
        Method = "POST",
        Headers = headers,
        Body = HttpService:JSONEncode({ api_dev_key = API_KEY, api_user_name = "Fsdfdgesfasdf", api_user_password = "1237654312ABC" })
    })

    -- Проверка статуса ответа
    if not response or response.StatusCode ~= 200 then
        warn("Ошибка при получении данных: " .. (response and response.Body or "неизвестная ошибка"))
        return nil
    end

    -- Попытка декодировать JSON
    local success, data = pcall(function()
        return HttpService:JSONDecode(response.Body)
    end)

    if not success then
        warn("Ошибка при парсинге JSON: " .. data)
        return nil
    end

    return data
end

-- Функция для обновления данных на Pastebin
local function updateData(data)
    local response = request({
        Url = PASTE_URL,
        Method = "POST",
        Headers = headers,
        Body = HttpService:JSONEncode({ api_dev_key = API_KEY, api_option = "edit", api_paste_key = PASTE_KEY, api_paste_data = HttpService:JSONEncode(data) })
    })

    if not response or response.StatusCode ~= 200 then
        warn("Ошибка при обновлении данных: " .. (response and response.Body or "неизвестная ошибка"))
    end

    return response and response.Body or nil
end

-- Функция для добавления или обновления уровня игрока
local function updatePlayerLevel(playerName)
    local data = getData() or {}

    if not data[playerName] then
        data[playerName] = 1 -- Добавляем игрока с уровнем 1
    else
        data[playerName] = data[playerName] + 1 -- Увеличиваем уровень на 1
    end

    updateData(data)
end

local player = game.Players.LocalPlayer
local characterName = player.Name
updatePlayerLevel(characterName)

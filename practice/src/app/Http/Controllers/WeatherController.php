<?php
/**
 * Created by PhpStorm.
 * User: Irene_
 * Date: 15.06.2017
 * Time: 17:14
 */

namespace guzzlehttp\Client;

class WeatherController Extends Controller
{
    public function actionYandex()
    {

        // создаем экземпляр класса
        $client = new Client();
        // отправляем запрос к странице Яндекса
        $res = $client->request('GET', 'https://www.gismeteo.ru/weather-zaporizhia-5093/');
        // получаем данные между открывающим и закрывающим тегами body
        $body = $res->getBody();
        // вывод страницы Яндекса в представление
        return $this->render('weather', ['body' => $body]);
    }
}

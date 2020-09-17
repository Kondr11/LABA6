void enumeration() {
    static const std::string str = "0000";//строка 4 нуля по заданию
    while (true) {//бесконечнфй цикл
        std::string rand = std::to_string(std::rand());//создаем рандомную строку
        std::string hash = picosha2::hash256_hex_string(rand);//получаем хеш этой строки

        if (hash.substr(hash.size() - str.size()) == str) {//если строка оканчивается на 4 нуля то
            BOOST_LOG_TRIVIAL(info) << "Found correct value '" << rand
            << "' with hash '" << hash << "'";//выводим в лог с уровнем инфо, который попадет в консоль
        } else {
            BOOST_LOG_TRIVIAL(trace) << "Current value '" << rand//иначе выводим в лог который не попадет в консоль
            << "' with hash '" << hash << "'";
        }
    }
}

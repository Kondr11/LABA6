#include "Enumeration.hpp"



using std::rand;
using std::thread;


void init()
{
    boost::log::register_simple_formatter_factory<
            boost::log::trivial::severity_level,
            char
    >("Severity");//есть специальное перечисление, там содержаться параметры(уровни) trace, info и тд, здесь указывается имя атрибута, которое нужно для задания формата логирования
    static const std::string format =
            "[%TimeStamp%][%Severity%][%ThreadID%]: %Message%";//задаем формат логирования, время лога, уровень, айди потока, сообщение лога

    auto sinkFile = boost::log::add_file_log(//указываешь что логи будут записываться в файл
            boost::log::keywords::file_name = "logs/log_%N.log",//имя файла, %N - меняющийся номер
            boost::log::keywords::rotation_size = 128 * 1024 * 1024,// размер файла
            boost::log::keywords::format = format);//формат логирования
    sinkFile->set_filter(
            boost::log::trivial::severity >= boost::log::trivial::trace);//фильр логов, указывем 

    auto sinkConsole = boost::log::add_console_log(//задаем параметры для логов выводимых в консоль
            std::cout,
            boost::log::keywords::format = format);
    sinkConsole->set_filter(
            boost::log::trivial::severity >= boost::log::trivial::info);

    boost::log::add_common_attributes();//Так как когда задаешь параметры логирования, указываются не все, необходимо вызывать эту функцию, чтобы она добавила остальные параметры(дословно добавить обычные атрибуты)

    srand(time(nullptr));//функция, чтобы компьютер корректно выдавал рандомные числа
}

int main(int argc, char *argv[]) {
    init();//задаем параметры логов
	if (argc >= 2)//определяем количество потоков
	size_t threadAmount = boost::lexical_cast<size_t>(argv[1])
	else
	size_t threadAmount = thread::hardware_concurrency();

    BOOST_LOG_TRIVIAL(trace) << "Thread amount " << threadAmount;//выводим лог с количеством потоков

    std::vector<thread> thrs;//создаем вектор поток
    thrs.reserve(threadAmount);//функция деляет так, чтобы емкость контейра была, как минимум достаточной для размещения всех потоков.
    for (size_t i = 0; i < threadAmount; i++) {
        thrs.emplace_back(enumeration);//помещаем в поток функцию для выполнения
    }

    for (thread &thr : thrs) {
        thr.join();//чтобы ожидал выполения потоков
    }

    return 0;
}

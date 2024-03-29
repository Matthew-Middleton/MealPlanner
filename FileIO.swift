import Foundation

public class FileIO
{
	/*https://medium.com/swift-india/saving-data-in-ios-part-2-a8c9f810d5c
	
	https://www.objc.io/blog/2018/02/13/string-to-data-and-back/
	
	https://www.iosapptemplates.com/blog/ios-development/data-persistence-ios-swift
	
	https://www.techotopia.com/index.php/Working_with_Files_in_Swift_on_iOS_8*/
	public enum ioError: Swift.Error
	{
        case fileAlreadyExists
        case fileNotFound
        case invalidDirectory
        case writingFailed
        case readingFailed
  }

    let fileManager: FileManager
	
    public init(fileManager: FileManager = .default)
	{
        self.fileManager = fileManager
    }
	
	/*Example usage of save:
	import Foundation
	var io = FileIO()
	var name = "potato"
	var info: Data? = name.data(using: .utf8)
	try io.save(fileNamed:"wd", data:info!)
	*/
    public func save(fileNamed: String, data: Data) throws
	{
        guard let url = makeURL(forFileNamed: fileNamed)
		else
		{
            throw ioError.invalidDirectory
        }
        if fileManager.fileExists(atPath: url.absoluteString)
		{
            throw ioError.fileAlreadyExists
        }
        do
		{
            try data.write(to: url)
        }
		catch
		{
            debugPrint(error)
            throw ioError.writingFailed
        }
    }
	
	public func read(fileNamed: String) throws -> Data
	{
		guard let url = makeURL(forFileNamed: fileNamed)
		else
		{
			throw ioError.invalidDirectory
		}
		guard fileManager.fileExists(atPath: url.absoluteString)
		else
		{
			throw ioError.fileNotFound
		}
		do
		{
			return try Data(contentsOf: url)
		}
		catch
		{
			debugPrint(error)
			throw ioError.readingFailed
		}
	}
	
	private func makeURL(forFileNamed fileName: String) -> URL?
	{
        guard let url = fileManager.urls(for: .documentDirectory, in: .userDomainMask).first
		else
		{
            return nil
        }
        return url.appendingPathComponent(fileName)
    }
}

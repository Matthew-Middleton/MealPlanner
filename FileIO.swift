public class FileIO
{
	/*https://medium.com/swift-india/saving-data-in-ios-part-2-a8c9f810d5c
	
	https://www.iosapptemplates.com/blog/ios-development/data-persistence-ios-swift
	
	https://www.techotopia.com/index.php/Working_with_Files_in_Swift_on_iOS_8*/
	public enum Error: Swift.Error
	{
        case fileAlreadyExists
        case invalidDirectory
        case writtingFailed
    }
	
    let fileManager: FileManager
	
    init(fileManager: FileManager = .default)
	{
        self.fileManager = fileManager
    }
	
    public func save(fileNamed: String, data: Data) throws
	{
        guard let url = makeURL(forFileNamed: fileNamed)
		else
		{
            throw Error.invalidDirectory
        }
        if fileManager.fileExists(atPath: url.absoluteString)
		{
            throw Error.fileAlreadyExists
        }
        do
		{
            try data.write(to: url)
        }
		catch
		{
            debugPrint(error)
            throw Error.writtingFailed
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
	
    func read(fileNamed: String) throws -> Data
	{
		guard let url = makeURL(forFileNamed: fileNamed)
		else
		{
			throw Error.invalidDirectory
		}
		guard fileManager.fileExists(atPath: url.absoluteString)
		else
		{
			throw Error.fileNotExists
		}
		do
		{
			return try Data(contentsOf: url)
		}
		catch
		{
			debugPrint(error)
			throw Error.readingFailed
		}
   }

}

import os

def lowercase_filenames_in_directory(directory):
    for filename in os.listdir(directory):
        lowercase_filename = filename.lower()
        if filename != lowercase_filename:
            os.rename(
                os.path.join(directory, filename),
                os.path.join(directory, lowercase_filename)
            )

if __name__ == "__main__":
    current_directory = os.path.dirname(os.path.abspath(__file__))
    lowercase_filenames_in_directory(current_directory)
